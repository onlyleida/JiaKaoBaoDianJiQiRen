.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B)\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u0010\u001a\u00020\u00072\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0017J\u0016\u0010\u0014\u001a\u00020\u00072\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0012H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;",
        "delete",
        "Lkotlin/Function1;",
        "",
        "",
        "getBoundary",
        "Lkotlin/Function0;",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "getDelete",
        "()Lkotlin/jvm/functions/Function1;",
        "getGetBoundary",
        "()Lkotlin/jvm/functions/Function0;",
        "onBindViewHolder",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "onViewRecycled",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Object;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/l;Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Object;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "+",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getBoundary"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;->b:Lkotlin/jvm/b/l;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;->c:Lkotlin/jvm/b/a;

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;->r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 2

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;->o()Lkotlin/jvm/b/a;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-nez p0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->j()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->convertCoordinate(Landroid/util/SparseArray;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object p0

    .line 4
    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    .line 5
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    const-string v0, "signal.carPos.back.vectorTo(signal.carPos.front)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorAngle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p0

    .line 7
    iget p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->degree:F

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpg-float p3, p0, p3

    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    .line 8
    iput p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->degree:F

    .line 9
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->valueEt:Landroid/widget/EditText;

    sget-object p2, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    new-array p2, v0, [Ljava/lang/Object;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->degree:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.0f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->a()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;->q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;)V

    return-void
.end method

.method public bridge synthetic i(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;->s(Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    return-void
.end method

.method public final n()Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Object;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;->b:Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public final o()Lkotlin/jvm/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/a<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;->c:Lkotlin/jvm/b/a;

    return-object v0
.end method

.method public q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder$b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder$b;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder$a;-><init>()V

    .line 3
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->precisionEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->precisionEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    if-eqz v4, :cond_1

    move-object v5, v3

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->name:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8f66\u8eab\u4e0e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->startPointIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->endPointIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u7ebf\u7684\u5939\u89d2\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->valueEt:Landroid/widget/EditText;

    sget-object v3, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->degree:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.0f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->precisionEt:Landroid/widget/EditText;

    new-array v4, v3, [Ljava/lang/Object;

    iget v8, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->accuracy:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->precisionEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->precisionEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->deleteIv:Landroid/widget/ImageView;

    const-string v1, "holder.viewBinding.deleteIv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder$onBindViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder$onBindViewHolder$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->m(Landroid/view/View;Lkotlin/jvm/b/a;)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->refresh:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/b;

    invoke-direct {v1, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public s(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/drakeet/multitype/c;->i(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->precisionEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemAngleBinding;->precisionEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    if-eqz v1, :cond_1

    move-object v3, p1

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
