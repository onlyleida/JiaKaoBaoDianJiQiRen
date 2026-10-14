.class public Lg/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/16 v1, 0x4348

    const/16 v2, 0x5523

    .line 1
    invoke-static {v1, v2}, Lg/c/a/d;->a(II)J

    move-result-wide v3

    const/4 v1, 0x0

    aput-wide v3, v0, v1

    const/16 v1, 0x1a86

    const/16 v3, 0x7523

    .line 2
    invoke-static {v1, v3}, Lg/c/a/d;->a(II)J

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v0, v5

    .line 3
    invoke-static {v1, v2}, Lg/c/a/d;->a(II)J

    move-result-wide v2

    const/4 v4, 0x2

    aput-wide v2, v0, v4

    const/16 v2, 0x445

    .line 4
    invoke-static {v1, v2}, Lg/c/a/d;->a(II)J

    move-result-wide v1

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    .line 5
    invoke-static {v0}, Lg/c/a/d;->b([J)[J

    sput-object v0, Lg/c/a/a;->a:[J

    return-void
.end method

.method public static a(II)Z
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/a;->a:[J

    invoke-static {v0, p0, p1}, Lg/c/a/d;->c([JII)Z

    move-result p0

    return p0
.end method
