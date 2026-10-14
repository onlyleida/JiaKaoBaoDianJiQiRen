.class final Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
        "cn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$1$1",
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

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    iput-object p2, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->tvHuima:Landroid/widget/TextView;

    const-string v0, "tvHuima"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->tvHuima:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$1;->$this_with:Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;->tvYongxin:Landroid/widget/TextView;

    const-string v0, "tvYongxin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;

    invoke-static {p1}, Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;->access$examHuiMa(Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;)V

    const-string p1, "\u70b9\u51fb\u56de\u9a6c\u8003\u573a"

    .line 5
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
