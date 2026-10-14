.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/g;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;
.source "SourceFile"


# instance fields
.field protected f:Lcn/mucang/android/jiakaoyi/signal/com/u/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;Lcn/mucang/android/jiakaoyi/signal/com/u/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a<",
            "*>;",
            "Lcn/mucang/android/jiakaoyi/signal/com/u/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/g;->f:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    return-void
.end method


# virtual methods
.method protected c(Lcn/mucang/android/jiakaoyi/signal/com/v/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->t()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->i()I

    move-result v2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 4
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
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->m()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;-><init>(Ljava/io/OutputStream;)V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->v()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;ZI)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;)V

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/g;->f:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/b;->o()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;Lcn/mucang/android/jiakaoyi/signal/com/u/a;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/a;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->c()V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->h(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
