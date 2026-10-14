.class Lcn/mucang/android/core/glide/d$a;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/glide/d;->c(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcn/mucang/android/core/glide/d;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/glide/d;Lokio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/glide/d$a;->b:Lcn/mucang/android/core/glide/d;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/core/glide/d$a;->a:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/core/glide/d$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/mucang/android/core/glide/d$a;->a:J

    .line 3
    iget-object p3, p0, Lcn/mucang/android/core/glide/d$a;->b:Lcn/mucang/android/core/glide/d;

    invoke-static {p3}, Lcn/mucang/android/core/glide/d;->a(Lcn/mucang/android/core/glide/d;)Lcn/mucang/android/core/glide/b;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcn/mucang/android/core/glide/d$a;->b:Lcn/mucang/android/core/glide/d;

    invoke-static {p3}, Lcn/mucang/android/core/glide/d;->a(Lcn/mucang/android/core/glide/d;)Lcn/mucang/android/core/glide/b;

    move-result-object v0

    iget-object p3, p0, Lcn/mucang/android/core/glide/d$a;->b:Lcn/mucang/android/core/glide/d;

    invoke-static {p3}, Lcn/mucang/android/core/glide/d;->b(Lcn/mucang/android/core/glide/d;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcn/mucang/android/core/glide/d$a;->a:J

    iget-object p3, p0, Lcn/mucang/android/core/glide/d$a;->b:Lcn/mucang/android/core/glide/d;

    invoke-virtual {p3}, Lcn/mucang/android/core/glide/d;->contentLength()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcn/mucang/android/core/glide/b;->a(Ljava/lang/String;JJ)V

    :cond_1
    return-wide p1
.end method
