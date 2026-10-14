.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/m;
.super Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/m;->i()V

    return-void
.end method

.method private i()V
    .locals 0

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "\u70b91\u6ca1\u6709\u91c7\u96c6"

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_1

    const-string v0, "\u70b92\u6ca1\u6709\u91c7\u96c6"

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_1
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_2

    const-string v0, "\u70b93\u6ca1\u6709\u91c7\u96c6"

    .line 6
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 7
    :cond_2
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v0, :cond_3

    const-string v0, "\u70b94\u6ca1\u6709\u91c7\u96c6"

    .line 8
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    return v0
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    const/4 v2, 0x0

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 2
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    return-void
.end method

.method public f(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_0

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_0

    .line 4
    :pswitch_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_0

    .line 5
    :pswitch_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_0

    .line 6
    :pswitch_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :goto_0
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u91c7\u96c6\u70b9"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string p1, "\u91c7\u96c6\u9884\u62a5\u70b91"

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    return-void
.end method

.method public h(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2QuKaSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string p1, "\u91c7\u96c6\u9884\u62a5\u70b92"

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    return-void
.end method
