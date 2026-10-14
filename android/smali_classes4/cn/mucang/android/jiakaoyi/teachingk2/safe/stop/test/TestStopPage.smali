.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

.field private e:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

.field private f:Z

.field private final g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private final h:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->d:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->e:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->f:Z

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/g;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->i:J

    const/16 v0, -0xa

    .line 8
    iput-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->j:B

    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private B()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->F(B)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->k()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->info:Landroid/widget/TextView;

    const-string v1, "\u5f00\u59cb\u76f4\u7ebf\u505c\u8f66\u6d4b\u8bd5:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 9
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x5

    const/high16 v7, 0x40000000    # 2.0f

    if-gt v5, v6, :cond_1

    .line 12
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    mul-int/lit16 v8, v5, 0xc8

    int-to-double v8, v8

    invoke-virtual {v6, v8, v9, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->move(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 13
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v9, 0x4044000000000000L    # 40.0

    invoke-virtual {v8, v9, v10, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->move(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 14
    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-virtual {v9, v6, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v8

    .line 15
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v9, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v10, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const v11, -0xff0100

    invoke-direct {v9, v10, v6, v7, v11}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    .line 21
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->c:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v8, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-direct {v8, v9, v6, v7, v11}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    .line 26
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->c:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 27
    :cond_1
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/16 v4, -0x100

    invoke-direct {v2, v3, v1, v7, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    .line 28
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    .line 30
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    .line 31
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;

    invoke-direct {v1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;

    .line 32
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->d()V

    return-void
.end method

.method private C()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->e()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->k()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->info:Landroid/widget/TextView;

    const-string v1, "\u5f00\u59cb\u8f6c\u5f2f\u505c\u8f66\u6d4b\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    .line 7
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 8
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x5

    const/high16 v7, 0x40800000    # 4.0f

    if-gt v5, v6, :cond_1

    .line 11
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    mul-int/lit16 v8, v5, 0xc8

    int-to-double v8, v8

    invoke-virtual {v6, v8, v9, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->move(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 12
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v9, 0x4044000000000000L    # 40.0

    invoke-virtual {v8, v9, v10, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->move(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 13
    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    invoke-virtual {v9, v6, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v8

    .line 14
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v8, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const v10, -0xff0100

    invoke-direct {v8, v9, v6, v7, v10}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    .line 20
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->c:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 21
    :cond_1
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/16 v4, -0x100

    invoke-direct {v2, v3, v1, v7, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    .line 24
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    .line 25
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;

    invoke-direct {v1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/g;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;

    .line 26
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->d()V

    return-void
.end method

.method private D(ILandroid/widget/SeekBar;)V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2
    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private E(D)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v1

    double-to-int p1, p1

    int-to-double p1, p1

    div-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private F(B)V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->j:B

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr v0, p1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->j:B

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/b;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/b;-><init>(B)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;D)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->E(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private synthetic l(D)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->info:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u505c\u8f66\u70b9\u548c\u76ee\u6807\u70b9\u8ddd\u79bb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic n(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->B()V

    return-void
.end method

.method private synthetic p(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->C()V

    return-void
.end method

.method private synthetic r(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->f:Z

    return-void
.end method

.method private synthetic t(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestSpeedControllerPage;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->d:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    const/high16 v3, 0x40000000    # 2.0f

    const/16 v4, -0x100

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->d:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, -0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->e:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    const/16 v0, 0x64

    .line 10
    iput v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->d:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->e:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->e:Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->move(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    :goto_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->f:Z

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p1, v2

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_3
    return-void
.end method

.method private synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->infoStop:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u76f4\u7ebf\u8ddd\u79bb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\u5f27\u7ebf\u8ddd\u79bb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\u5239\u8f66\u529b\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\u5239\u8f66\u8ddd\u79bb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\u5782\u76f4\u8ddd\u79bb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\u901f\u5ea6(cm/s):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->f:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic z(B)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->TeachBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->createBrakeModel(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    .line 2
    invoke-static {v0, v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;BB)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->i:J

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_0

    const-wide/16 v2, 0xfa0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object p2

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u505c\u8f66\u70b9\u548c\u8f66\u5b50\u8ddd\u79bb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double v3, p1, v1

    double-to-int v3, v3

    int-to-double v3, v3

    div-double/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/h;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;D)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6d4b\u8bd5\u5230\u70b9\u505c\u8f66"

    return-object v0
.end method

.method protected init()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->c:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->linestop:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->turnStop:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->turnStop:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setClickViewListener(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor1V:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->p:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->E(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor2V:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->q:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->E(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor3V:Landroid/widget/TextView;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->r:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {p0, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->E(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor4V:Landroid/widget/TextView;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->n:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-direct {p0, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->E(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor5V:Landroid/widget/TextView;

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->o:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->E(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor1:Landroid/widget/SeekBar;

    invoke-direct {p0, v0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->D(ILandroid/widget/SeekBar;)V

    .line 14
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, v1

    div-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor2:Landroid/widget/SeekBar;

    invoke-direct {p0, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->D(ILandroid/widget/SeekBar;)V

    .line 15
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, v1

    div-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor3:Landroid/widget/SeekBar;

    invoke-direct {p0, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->D(ILandroid/widget/SeekBar;)V

    .line 16
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, v1

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor4:Landroid/widget/SeekBar;

    invoke-direct {p0, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->D(ILandroid/widget/SeekBar;)V

    .line 17
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor5:Landroid/widget/SeekBar;

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->D(ILandroid/widget/SeekBar;)V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor1:Landroid/widget/SeekBar;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor2:Landroid/widget/SeekBar;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor3:Landroid/widget/SeekBar;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor4:Landroid/widget/SeekBar;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 22
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->factor5:Landroid/widget/SeekBar;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$e;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage$e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 23
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTestStopBinding;->controlSpeed:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic m(D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->l(D)V

    return-void
.end method

.method public synthetic o(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->n(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->e()V

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->TeachBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->createBrakeModel(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;BB)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->h:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/f;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->F(B)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public synthetic q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->p(Landroid/view/View;)V

    return-void
.end method

.method public synthetic s(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->r(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->t(Landroid/view/View;)V

    return-void
.end method

.method public synthetic w(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->v(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/stop/test/TestStopPage;->x(Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;)V

    return-void
.end method
