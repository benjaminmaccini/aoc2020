const std = @import("std");
const warn = std.debug.warn;

pub fn main() !void {
    const cwd = std.fs.cwd();
    const f = try cwd.openFile("day6/day6.txt", .{ .read = true });

    var buffer: [16953]u8 = undefined;
    try f.seekTo(0);
    const bytes_read = try f.pread(&buffer, 0);

    var iter = std.mem.split(buffer[0..bytes_read], "\n");

    var group = std.ArrayList([]const u8).init(std.heap.page_allocator);
    var groups = std.ArrayList(std.ArrayList([]const u8)).init(std.heap.page_allocator);
    while (iter.next()) |line| {
        if (line.len == 0) {
            try groups.append(group);
            group = std.ArrayList([]const u8).init(std.heap.page_allocator);
        } else {
            try group.append(line);
        }
    }

    var count: i32 = 0;

    var counts = std.ArrayList(u64).init(std.heap.page_allocator); // Counts of all the unique "yes" chars across a group
    var counts2 = std.ArrayList(u64).init(std.heap.page_allocator); // Counts of "yes" chars if the whole group said yes
    var unique = std.AutoHashMap(u8, i32).init(std.heap.page_allocator);
    var all_yes = std.AutoHashMap(u8, void).init(std.heap.page_allocator);
    for (groups.span()) |g| {
        unique = std.AutoHashMap(u8, i32).init(std.heap.page_allocator);
        all_yes = std.AutoHashMap(u8, void).init(std.heap.page_allocator);

        // Is there a better way to finnd ArrayList length?
        var capacity: i32 = 0;
        for (g.span()) |_| {
            capacity += 1;
        }

        for (g.span()) |line| {
            for (line) |c| {
                if (!unique.contains(c)) {
                    var t: i32 = 1;
                    _ = try unique.put(c, t);
                    if (capacity == 1) {
                        if (!all_yes.contains(c)) {
                            _ = try all_yes.put(c, {});
                        }
                    }
                } else {
                    count = unique.getValue(c).?;
                    _ = unique.remove(c);
                    _ = try unique.put(c, count + @as(i32, 1));

                    // If the count of a character is the length of the overall group all said yes
                    if (count + @as(i32, 1) == capacity) {
                        if (!all_yes.contains(c)) {
                            _ = try all_yes.put(c, {});
                        }
                    }
                }
            }
        }
        try counts.append(unique.count());
        try counts2.append(all_yes.count());
    }

    var sum: u64 = 0;
    for (counts.span()) |c| {
        sum += c;
    }
    warn("{}\n", .{sum});

    var sum2: u64 = 0;
    for (counts2.span()) |c| {
        sum2 += c;
    }
    warn("{}\n", .{sum2});
}
