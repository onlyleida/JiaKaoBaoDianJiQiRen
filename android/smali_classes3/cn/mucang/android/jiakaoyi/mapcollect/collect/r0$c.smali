.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->a:Ljava/util/List;

    const-string v0, "\u91c7\u96c6\u4e3b\u5929\u7ebf"

    const-string v1, "\u91c7\u96c6\u70b9"

    const-string v2, "\u91c7\u96c6\u5de6\u524d\u8f6e"

    const-string v3, "\u91c7\u96c6\u5de6\u540e\u8f6e"

    const-string v4, "\u91c7\u96c6\u53f3\u524d\u8f6e"

    const-string v5, "\u91c7\u96c6\u53f3\u540e\u8f6e"

    const-string v6, "\u8bbe\u7f6e\u8f66\u8f6e\u504f\u79fb"

    const-string v7, "\u524d\u98ce\u6321\u8ddd\u79bb"

    const-string v8, "\u540e\u98ce\u6321\u8ddd\u79bb"

    const-string v9, "\u8f66\u8eab\u9ad8\u5ea6"

    .line 3
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5de6\u540e\u89c6\u955c"

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u53f3\u540e\u89c6\u955c"

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5de6\u8f6e\u5ed3"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u53f3\u8f6e\u5ed3"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic c(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->f(I)V

    return-void
.end method

.method private f(I)V
    .locals 9

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;-><init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v2

    invoke-direct {p1, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;-><init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Z)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;-><init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Z)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/f;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/f;-><init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;)V

    goto/16 :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v3

    if-nez v3, :cond_4

    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    iget v4, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->f:F

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    iget v5, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e:F

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->k(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->h:D

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->z(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;FFDZ)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v1, :cond_7

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I

    move-result p1

    const/16 v0, 0x18

    if-gt p1, v0, :cond_6

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->B(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;Ljava/util/List;)Ljava/util/List;

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "\u6700\u591a\u53ea\u80fd\u91c7\u96c624\u4e2a\u70b9"

    .line 15
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->I(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->H(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->K(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->J(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xa

    if-ne p1, v0, :cond_c

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->y(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->h(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I

    .line 26
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;Ljava/util/List;)Ljava/util/List;

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 29
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    goto :goto_0

    :cond_c
    const/16 v0, 0xb

    if-ne p1, v0, :cond_d

    .line 30
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v3, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->G(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 31
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->j(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I

    .line 32
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->l(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;->c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;Ljava/util/List;)Ljava/util/List;

    .line 33
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 34
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 35
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)V

    :cond_d
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic d(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->c(ILandroid/view/View;)V

    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ":"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    if-ne p2, v2, :cond_1

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xb

    if-ne p2, v2, :cond_2

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;->i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;->a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;
    .locals 3

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->hpmap__collect_car_collect:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$c;->g(Landroid/view/ViewGroup;I)Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$b;

    move-result-object p1

    return-object p1
.end method
