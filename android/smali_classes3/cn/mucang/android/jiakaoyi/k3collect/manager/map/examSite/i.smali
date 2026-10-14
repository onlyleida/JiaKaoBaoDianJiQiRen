.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ExamSiteAddItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3SiteItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ExamSiteAddItemBinding;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;",
        "(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;)V",
        "getActivity",
        "()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "MapCollectK3_release"
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
.field private final b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;->q(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;->n()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;->t(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method public final n()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;

    return-object v0
.end method

.method public p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ExamSiteAddItemBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ExamSiteAddItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ExamSiteAddItemBinding;->nameTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ExamSiteAddItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ExamSiteAddItemBinding;->descTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSysName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ExamSiteAddItemBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ExamSiteAddItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/g;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/g;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
