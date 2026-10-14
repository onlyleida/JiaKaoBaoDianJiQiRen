.class final Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;)V",
        "cn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$1$3",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

.field final synthetic this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;->$this_with:Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    iput-object p2, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    iget-object v1, p1, Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;->resName:Ljava/lang/String;

    const-string v2, "it.resName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$play(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    iget-object p1, p1, Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;->resName:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$setSelectedResName$p(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;->$this_with:Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->tvHuima:Landroid/widget/TextView;

    const-string v0, "tvHuima"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {p1}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$examHuiMa(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {p1}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$examYongXin(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3;->onChanged(Lcn/mucang/sundial/android/eventbus/event/ExamHallResEvent;)V

    return-void
.end method
