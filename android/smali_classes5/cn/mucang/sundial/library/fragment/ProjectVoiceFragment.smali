.class public final Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\rJ+\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;",
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
        "Lme/drakeet/multitype/d;",
        "adapter",
        "Lme/drakeet/multitype/d;",
        "Lme/drakeet/multitype/Items;",
        "items",
        "Lme/drakeet/multitype/Items;",
        "Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;",
        "viewBinding",
        "Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;",
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

.field private viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Lme/drakeet/multitype/Items;

    invoke-direct {v0}, Lme/drakeet/multitype/Items;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;->items:Lme/drakeet/multitype/Items;

    .line 3
    new-instance v1, Lme/drakeet/multitype/d;

    invoke-direct {v1, v0}, Lme/drakeet/multitype/d;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;

    move-result-object p1

    const-string p2, "TtFragmentProjectVoiceBinding.inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;

    const/4 p2, 0x0

    const-string p3, "viewBinding"

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    new-instance v1, Lcn/mucang/sundial/library/binder/ProjectVoiceBinder;

    invoke-direct {v1}, Lcn/mucang/sundial/library/binder/ProjectVoiceBinder;-><init>()V

    .line 3
    const-class v2, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    invoke-virtual {v0, v2, v1}, Lme/drakeet/multitype/d;->f(Ljava/lang/Class;Lme/drakeet/multitype/b;)V

    .line 4
    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_ready:I

    const-string v2, "\u8003\u8bd5\u51c6\u5907"

    const-string v3, "\u7ed5\u8f66\u4e00\u5468\u68c0\u67e5\u8f66\u8f86\u5916\u89c2\u53ca\u5b89\u5168\u72b6\u51b5\uff0c\u6253\u5f00\u8f66\u95e8\u524d\u89c2\u5bdf\u540e\u65b9\u4ea4\u901a\u60c5\u51b5{\u505c\u987f}{\u505c\u987f}\uff0c\u4e0a\u8f66\u540e\u8bf7\u7cfb\u597d\u5b89\u5168\u5e26\uff0c\u8c03\u6574\u5ea7\u4f4d\u3001\u4fa7\u955c\u3001\u540e\u89c6\u955c\u3001{\u505c\u987f}{\u505c\u987f}\uff0c\u6253\u5f00\u8fd1\u5149\u706f\u5e76\u5173\u95ed\u8b66\u793a\u706f"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_start:I

    const-string v2, "\u8d77\u6b65"

    const-string v3, "\u8bf7\u8d77\u6b65\u7ee7\u7eed\u5b8c\u6210\u8003\u8bd5"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_crossroads_straight:I

    const-string v2, "\u8def\u53e3\u76f4\u884c"

    const-string v3, "\u524d\u65b9\u8def\u53e3\u76f4\u884c"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_change_lane:I

    const-string v2, "\u53d8\u66f4\u8f66\u9053"

    const-string v3, "\u524d\u65b9\u8bf7\u53d8\u66f4\u8f66\u9053"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_bus_stop:I

    const-string v2, "\u516c\u5171\u6c7d\u8f66\u7ad9"

    const-string v3, "\u901a\u8fc7\u516c\u5171\u6c7d\u8f66\u7ad9"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_school:I

    const-string v2, "\u5b66\u6821"

    const-string v3, "\u901a\u8fc7\u5b66\u6821\u533a\u57df"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_line_drive:I

    const-string v2, "\u76f4\u7ebf\u884c\u9a76"

    const-string v3, "\u524d\u65b9\u8fdb\u5165\u76f4\u7ebf\u884c\u9a76\u8def\u6bb5\uff0c\u8bf7\u4fdd\u6301\u65f6\u901f\u572835\u516c\u91cc\u5de6\u53f3"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_turn_left:I

    const-string v2, "\u5de6\u8f6c"

    const-string v3, "\u524d\u65b9\u8def\u53e3\u5de6\u8f6c"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_turn_right:I

    const-string v2, "\u53f3\u8f6c"

    const-string v3, "\u524d\u65b9\u8def\u53e3\u53f3\u8f6c"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_shift:I

    const-string v2, "\u52a0\u901f\u6321"

    const-string v3, "\u8bf7\u8fdb\u884c\u52a0\u51cf\u6863\u4f4d\u64cd\u4f5c"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_meet_car:I

    const-string v2, "\u4f1a\u8f66"

    const-string v3, "\u4e0e\u673a\u52a8\u8f66\u4f1a\u8f66"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_over_take:I

    const-string v2, "\u8d85\u8f66"

    const-string v3, "\u8bf7\u8d85\u8d8a\u524d\u65b9\u8f66\u8f86"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_slow_down:I

    const-string v2, "\u51cf\u901f"

    const-string v3, "\u8bf7\u51cf\u901f\u6162\u884c"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_speed_limit:I

    const-string v2, "\u9650\u901f"

    const-string v3, "\u524d\u65b9\u8def\u6bb5\u6700\u4f4e\u9650\u901f40\u516c\u91cc\u6bcf\u5c0f\u65f6{\u505c\u987f}{\u505c\u987f}{\u505c\u987f}{\u505c\u987f}{\u505c\u987f}\uff0c\u79bb\u5f00\u6700\u4f4e\u9650\u901f\u8def\u6bb5"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_crosswalk:I

    const-string v2, "\u4eba\u884c\u6a2a\u9053"

    const-string v3, "\u524d\u65b9\u4eba\u884c\u6a2a\u9053"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_crosswalk2:I

    const-string v3, "\u6709\u884c\u4eba\u901a\u8fc7\uff0c\u524d\u65b9\u4eba\u884c\u6a2a\u9053\u6709\u884c\u4eba\u901a\u8fc7{\u505c\u987f}{\u505c\u987f}{\u505c\u987f}{\u505c\u987f}\uff0c\u884c\u4eba\u5df2\u901a\u8fc7"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_tunnel:I

    const-string v2, "\u96a7\u9053"

    const-string v3, "\u524d\u65b9\u96a7\u9053"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_u_turn:I

    const-string v2, "\u6389\u5934"

    const-string v3, "\u524d\u65b9\u8bf7\u9009\u62e9\u5408\u9002\u5730\u70b9\u6389\u5934"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_pull_over:I

    const-string v2, "\u9760\u8fb9\u505c\u8f66"

    const-string v3, "\u8bf7\u9760\u8fb9\u505c\u8f66"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__ic_voice_straight_end:I

    const-string v2, "\u76f4\u884c\u884c\u9a76\u7ed3\u675f"

    const-string v3, "\u76f4\u7ebf\u884c\u9a76\u7ed3\u675f"

    invoke-direct {v0, v2, v1, v3}, Lcn/mucang/sundial/library/entity/ProjectVoiceItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {v0, p1}, Lme/drakeet/multitype/d;->h(Ljava/util/List;)V

    .line 27
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 28
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "viewBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 29
    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "\u663e\u793a\u9879\u76ee\u8bed\u97f3"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void
.end method
