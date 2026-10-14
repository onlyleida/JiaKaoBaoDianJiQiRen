.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b<",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

.field private c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/b;

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;)V

    return-object v0
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->e()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/b;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/b;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/b;

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v1, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    .line 6
    iget v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->arrowType:I

    iput v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->d:I

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 9
    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->e:F

    float-to-double v4, v3

    invoke-static {v0, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->d:I

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->Companion:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType$a;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType$a;->a(I)Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    move-result-object v0

    const/16 v1, 0x69

    const/16 v2, 0xf

    const/16 v3, 0x78

    const/16 v4, 0x4b

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 13
    sget-object v6, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v1, 0x96

    const/16 v2, 0x3c

    const/16 v2, 0x4b

    const/16 v5, 0x3c

    goto :goto_3

    :pswitch_1
    const/16 v1, 0x78

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x78

    const/16 v2, 0x4b

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x2d

    const/16 v2, 0x6e

    goto :goto_3

    :pswitch_4
    const/4 v2, 0x0

    :goto_0
    const/16 v5, 0x4b

    goto :goto_3

    :pswitch_5
    const/16 v2, 0x4b

    goto :goto_3

    :pswitch_6
    const/16 v0, 0x1e

    const/16 v1, 0x78

    const/16 v2, 0x1e

    :goto_1
    const/16 v5, 0xf

    goto :goto_3

    :cond_0
    :goto_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-eqz v1, :cond_1

    const/16 v0, 0x14

    .line 14
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/2addr v1, v0

    int-to-double v6, v1

    invoke-static {v3, v4, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    int-to-double v6, v0

    invoke-static {v3, v4, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    add-int/2addr v2, v0

    int-to-double v6, v2

    .line 16
    invoke-static {v3, v1, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v2

    add-int/2addr v5, v0

    int-to-double v4, v5

    .line 17
    invoke-static {v3, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4, v2, v5, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->i:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 19
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method
