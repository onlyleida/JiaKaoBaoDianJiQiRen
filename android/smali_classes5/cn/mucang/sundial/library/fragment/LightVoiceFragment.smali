.class public final Lcn/mucang/sundial/library/fragment/LightVoiceFragment;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\rJ+\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\rR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/sundial/library/fragment/LightVoiceFragment;",
        "Lcn/mucang/sundial/library/fragment/BaseFragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "Lkotlin/v;",
        "onResume",
        "()V",
        "onPause",
        "Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;",
        "viewBinding",
        "Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;",
        "Lme/drakeet/multitype/Items;",
        "items",
        "Lme/drakeet/multitype/Items;",
        "Lme/drakeet/multitype/d;",
        "adapter",
        "Lme/drakeet/multitype/d;",
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

.field private viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Lme/drakeet/multitype/Items;

    invoke-direct {v0}, Lme/drakeet/multitype/Items;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/LightVoiceFragment;->items:Lme/drakeet/multitype/Items;

    .line 3
    new-instance v1, Lme/drakeet/multitype/d;

    invoke-direct {v1, v0}, Lme/drakeet/multitype/d;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcn/mucang/sundial/library/fragment/LightVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;

    move-result-object p1

    const-string p2, "TtFragmentLightVoiceBinding.inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/LightVoiceFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;

    const/4 p2, 0x0

    const-string p3, "viewBinding"

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/LightVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    new-instance v1, Lcn/mucang/sundial/library/binder/LightVoiceBinder;

    invoke-direct {v1}, Lcn/mucang/sundial/library/binder/LightVoiceBinder;-><init>()V

    .line 3
    const-class v2, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    invoke-virtual {v0, v2, v1}, Lme/drakeet/multitype/d;->f(Ljava/lang/Class;Lme/drakeet/multitype/b;)V

    .line 4
    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/LightVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_light_start:I

    const-string v2, "\u5f00\u59cb"

    const-string v3, "\u4e0b\u9762\u5c06\u8fdb\u884c\u6a21\u62df\u591c\u95f4\u884c\u9a76\u573a\u666f\u706f\u5149\u4f7f\u7528\u7684\u8003\u8bd5\uff0c\u8bf7\u6309\u8bed\u97f3\u6307\u4ee4\u57285\u79d2\u5185\u505a\u51fa\u76f8\u5e94\u7684\u706f\u5149\u64cd\u4f5c\uff1a\u8bf7\u5f00\u542f\u524d\u7167\u706f"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_light_off:I

    const-string v2, "\u5173\u706f"

    const-string v3, "\u6a21\u62df\u591c\u95f4\u8003\u8bd5\u5b8c\u6210\uff0c\u8bf7\u5173\u95ed\u6240\u6709\u706f\u5149"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_light_near:I

    const-string v2, "\u8fd1\u5149"

    const-string v3, "\u591c\u95f4\u5728\u6709\u8def\u706f\u7684\u9053\u8def\u4e0a\u884c\u9a76"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u5728\u7167\u660e\u826f\u597d\u7684\u9053\u8def\u4e0a\u884c\u9a76"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u540c\u65b9\u5411\u8fd1\u8ddd\u79bb\u8ddf\u8f66\u884c\u9a76"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u5728\u7a84\u8def\u4e0e\u975e\u673a\u52a8\u8f66\u4f1a\u8f66"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u4e0e\u673a\u52a8\u8f66\u4f1a\u8f66"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u5728\u7a84\u6865\u4e0e\u975e\u673a\u52a8\u8f66\u4f1a\u8f66"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u76f4\u884c\u901a\u8fc7\u6709\u4ea4\u901a\u4fe1\u53f7\u706f\u63a7\u5236\u7684\u8def\u53e3"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_light_far:I

    const-string v2, "\u8fdc\u5149"

    const-string v3, "\u591c\u95f4\u5728\u6ca1\u6709\u8def\u706f\uff0c\u7167\u660e\u4e0d\u826f\u7684\u6761\u4ef6\u4e0b\u884c\u9a76"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_light_flash:I

    const-string v2, "\u95ea\u5149"

    const-string v3, "\u591c\u95f4\u901a\u8fc7\u5761\u8def\u3001\u62f1\u6865"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u901a\u8fc7\u6ca1\u6709\u4ea4\u901a\u4fe1\u53f7\u706f\u63a7\u5236\u7684\u8def\u53e3"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u901a\u8fc7\u4eba\u884c\u6a2a\u9053"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u8d85\u8d8a\u524d\u65b9\u8f66\u8f86"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u901a\u8fc7\u6025\u5f2f"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_light_width:I

    const-string v2, "\u793a\u5bbd\u8b66\u793a"

    const-string v3, "\u591c\u95f4\u5728\u9053\u8def\u4e0a\u53d1\u751f\u6545\u969c\uff0c\u59a8\u788d\u4ea4\u901a\u53c8\u96be\u4ee5\u79fb\u52a8"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u591c\u95f4\u5728\u9053\u8def\u4e0a\u53d1\u751f\u4ea4\u901a\u4e8b\u6545\uff0c\u59a8\u788d\u4ea4\u901a\u53c8\u96be\u4ee5\u79fb\u52a8"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    const-string v3, "\u8def\u8fb9\u4e34\u65f6\u505c\u8f66"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_light_fog:I

    const-string v2, "\u96fe\u706f"

    const-string v3, "\u96fe\u5929\u884c\u9a76"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_light_right:I

    const-string v2, "\u53f3\u8f6c"

    const-string v3, "\u591c\u95f4\u8def\u53e3\u53f3\u8f6c\u5f2f"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_light_left:I

    const-string v2, "\u5de6\u8f6c"

    const-string v3, "\u591c\u95f4\u8def\u53e3\u5de6\u8f6c\u5f2f"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_light_end:I

    const-string v2, "\u7ed3\u675f"

    const-string v3, "\u8bf7\u8d77\u6b65\uff0c\u7ee7\u7eed\u5b8c\u6210\u8003\u8bd5"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/LightVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/d;->h(Ljava/util/List;)V

    .line 29
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/LightVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 30
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/LightVoiceFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "viewBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 31
    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/library/tts/Tts;->speakStop()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "\u663e\u793a\u706f\u5149\u8bed\u97f3"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void
.end method
