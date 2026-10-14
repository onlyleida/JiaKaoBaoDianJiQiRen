.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/h;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;
.source "SourceFile"


# instance fields
.field protected final f:Lcn/mucang/android/jiakaoyi/signal/d/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/d/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/d/g;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/h;->f:Lcn/mucang/android/jiakaoyi/signal/d/g;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c(Lcn/mucang/android/jiakaoyi/signal/com/v/b;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/com/t/b;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->t()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->i()I

    move-result v2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/t/b;->d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/t/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->c:Z

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->b:[B

    invoke-direct {v2, v3, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([BZ)V

    .line 4
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->b:[B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6536\u5230 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->a:I

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->s([BLjava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/h;->f:Lcn/mucang/android/jiakaoyi/signal/d/g;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/com/t/a;->a:I

    invoke-virtual {p1, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/d/g;->a(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/com/v/b;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/com/ComState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/com/u/b/d;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->m()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;-><init>(Ljava/io/OutputStream;Lcn/mucang/android/jiakaoyi/signal/com/u/a;)V

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->v()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4, v3}, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;ZI)V

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;)V

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;Lcn/mucang/android/jiakaoyi/signal/com/u/a;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/a;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->h(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
