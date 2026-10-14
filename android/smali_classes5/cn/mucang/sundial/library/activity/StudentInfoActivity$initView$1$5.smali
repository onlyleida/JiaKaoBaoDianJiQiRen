.class final Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/StudentInfoActivity;->initView()V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
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
.field final synthetic $this_with:Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$5;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "\u70b9\u51fb\u5de6\u4e0a\u89d2\u8fd4\u56de"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/library/tts/Tts;->speakStop()V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$5;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->leftLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "leftLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$5;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->rightLayout:Landroid/widget/LinearLayout;

    const-string v1, "rightLayout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$5;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->voiceLayout:Landroid/widget/LinearLayout;

    const-string v0, "voiceLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
