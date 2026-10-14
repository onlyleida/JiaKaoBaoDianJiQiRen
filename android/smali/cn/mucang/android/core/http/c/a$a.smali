.class Lcn/mucang/android/core/http/c/a$a;
.super Lokio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/http/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J

.field final synthetic c:Lcn/mucang/android/core/http/c/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/http/c/a;Lokio/Sink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/http/c/a$a;->c:Lcn/mucang/android/core/http/c/a;

    .line 2
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/core/http/c/a$a;->a:J

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/core/http/c/a$a;->b:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/core/http/c/a$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/http/c/a$a;->c:Lcn/mucang/android/core/http/c/a;

    invoke-virtual {p1}, Lcn/mucang/android/core/http/c/a;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/http/c/a$a;->b:J

    .line 4
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/core/http/c/a$a;->a:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcn/mucang/android/core/http/c/a$a;->a:J

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/http/c/a$a;->c:Lcn/mucang/android/core/http/c/a;

    invoke-static {p1}, Lcn/mucang/android/core/http/c/a;->a(Lcn/mucang/android/core/http/c/a;)Lcn/mucang/android/core/http/c/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/core/http/c/a$a;->c:Lcn/mucang/android/core/http/c/a;

    invoke-static {p1}, Lcn/mucang/android/core/http/c/a;->a(Lcn/mucang/android/core/http/c/a;)Lcn/mucang/android/core/http/c/b;

    move-result-object v0

    iget-wide v1, p0, Lcn/mucang/android/core/http/c/a$a;->a:J

    iget-wide v3, p0, Lcn/mucang/android/core/http/c/a$a;->b:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface/range {v0 .. v5}, Lcn/mucang/android/core/http/c/b;->a(JJZ)V

    :cond_2
    return-void
.end method
