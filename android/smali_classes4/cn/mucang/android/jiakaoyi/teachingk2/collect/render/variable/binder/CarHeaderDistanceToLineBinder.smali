.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B)\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u0010\u001a\u00020\u00072\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0017J\u0016\u0010\u0014\u001a\u00020\u00072\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0012H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;",
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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;->b:Lkotlin/jvm/b/l;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;->c:Lkotlin/jvm/b/a;

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;->r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 4

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;->o()Lkotlin/jvm/b/a;

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

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->convertCoordinate(Landroid/util/SparseArray;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p3, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 5
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, p3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 6
    invoke-static {v0, v1, v2, v3}, Lkotlin/a0/d;->d(DD)D

    move-result-wide v0

    double-to-float p0, v0

    .line 7
    iget p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distance:F

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
    iput p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distance:F

    .line 9
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->distanceTv:Landroid/widget/EditText;

    sget-object p2, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    new-array p2, v0, [Ljava/lang/Object;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distance:F

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

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;->q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;)V

    return-void
.end method

.method public bridge synthetic i(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;->s(Lcn/mucang/android/jiakaoyi/framework/base/h;)V

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;->b:Lkotlin/jvm/b/l;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;->c:Lkotlin/jvm/b/a;

    return-object v0
.end method

.method public q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder$b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder$b;-><init>()V

    .line 2
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->a:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->distanceTv:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->distanceTv:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->name:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8f66\u5934\u8ddd\u79bb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->startPointIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->endPointIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u7ebf\uff08cm\uff09\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->deleteIv:Landroid/widget/ImageView;

    const-string v2, "holder.viewBinding.deleteIv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder$onBindViewHolder$1;

    invoke-direct {v2, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder$onBindViewHolder$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;)V

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->m(Landroid/view/View;Lkotlin/jvm/b/a;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->distanceTv:Landroid/widget/EditText;

    sget-object v2, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distance:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.0f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->distanceTv:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->distanceTv:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_1
    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->equalRb:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->smallRb:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->bigRb:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 14
    :goto_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->radioGroup:Landroid/widget/RadioGroup;

    const-string v1, "holder.viewBinding.radioGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder$onBindViewHolder$2;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder$onBindViewHolder$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->j(Landroid/widget/RadioGroup;Lkotlin/jvm/b/l;)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->refresh:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/d;

    invoke-direct {v1, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public s(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->distanceTv:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemDistanceBinding;->distanceTv:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    if-eqz v1, :cond_0

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
