.class public final Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;
.super Lcn/mucang/sundial/library/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008!\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;",
        "Lcn/mucang/sundial/library/fragment/BaseFragment;",
        "Lkotlin/v;",
        "initViewModel",
        "()V",
        "Lcn/mucang/sundial/library/entity/PhotoRecordInfo;",
        "photoRecordInfo",
        "updateUI",
        "(Lcn/mucang/sundial/library/entity/PhotoRecordInfo;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "onResume",
        "Lme/drakeet/multitype/Items;",
        "items",
        "Lme/drakeet/multitype/Items;",
        "Lme/drakeet/multitype/d;",
        "adapter",
        "Lme/drakeet/multitype/d;",
        "Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;",
        "viewBinding",
        "Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;",
        "Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;",
        "viewModel",
        "Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final adapter:Lme/drakeet/multitype/d;

.field private final items:Lme/drakeet/multitype/Items;

.field private viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;

.field private viewModel:Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Lme/drakeet/multitype/Items;

    invoke-direct {v0}, Lme/drakeet/multitype/Items;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->items:Lme/drakeet/multitype/Items;

    .line 3
    new-instance v1, Lme/drakeet/multitype/d;

    invoke-direct {v1, v0}, Lme/drakeet/multitype/d;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->adapter:Lme/drakeet/multitype/d;

    return-void
.end method

.method public static final synthetic access$updateUI(Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;Lcn/mucang/sundial/library/entity/PhotoRecordInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->updateUI(Lcn/mucang/sundial/library/entity/PhotoRecordInfo;)V

    return-void
.end method

.method private final initViewModel()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;

    invoke-virtual {p0, p0, v0}, Lcn/mucang/sundial/library/fragment/BaseFragment;->vm(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;

    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;->getPhotoRecordData()Landroidx/lifecycle/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment$initViewModel$$inlined$run$lambda$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment$initViewModel$$inlined$run$lambda$1;-><init>(Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    :cond_0
    return-void
.end method

.method private final updateUI(Lcn/mucang/sundial/library/entity/PhotoRecordInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->adapter:Lme/drakeet/multitype/d;

    new-instance v2, Lcn/mucang/sundial/library/binder/PhotoRecordBinder;

    invoke-direct {v2}, Lcn/mucang/sundial/library/binder/PhotoRecordBinder;-><init>()V

    .line 3
    const-class v3, Lcn/mucang/sundial/library/entity/PhotoEntity;

    invoke-virtual {v1, v3, v2}, Lme/drakeet/multitype/d;->f(Ljava/lang/Class;Lme/drakeet/multitype/b;)V

    .line 4
    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/PhotoRecordInfo;->getInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/PhotoRecordInfo;->getInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/PhotoRecordInfo;->getInfoList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/d;->h(Ljava/util/List;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    const-string p1, "viewBinding"

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->initViewModel()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;

    move-result-object p1

    const-string p2, "TtFragmentPhotoRecordBinding.inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "viewBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "viewBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;->getPhotoRecords()V

    :cond_0
    const-string v0, "\u663e\u793a\u6293\u62cd\u8bb0\u5f55"

    .line 3
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void
.end method
