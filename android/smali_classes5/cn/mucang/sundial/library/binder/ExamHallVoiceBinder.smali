.class public final Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;
.super Lcn/mucang/sundial/library/widget/ViewBindingBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder<",
        "Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;",
        "Lcn/mucang/sundial/library/databinding/TtProjectVoiceItemBinding;",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J%\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;",
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder;",
        "Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;",
        "Lcn/mucang/sundial/library/databinding/TtProjectVoiceItemBinding;",
        "Lcn/mucang/sundial/library/widget/ViewBindingHolder;",
        "holder",
        "item",
        "Lkotlin/v;",
        "onBindViewHolder",
        "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;)V",
        "",
        "lastClickTime",
        "J",
        "getLastClickTime",
        "()J",
        "setLastClickTime",
        "(J)V",
        "<init>",
        "()V",
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
.field private lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/widget/ViewBindingBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastClickTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;->lastClickTime:J

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/library/widget/ViewBindingHolder;

    check-cast p2, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;->onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;)V

    return-void
.end method

.method protected onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/library/widget/ViewBindingHolder<",
            "Lcn/mucang/sundial/library/databinding/TtProjectVoiceItemBinding;",
            ">;",
            "Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtProjectVoiceItemBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtProjectVoiceItemBinding;->name:Landroid/widget/TextView;

    const-string v1, "holder.viewBinding.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtProjectVoiceItemBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtProjectVoiceItemBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtProjectVoiceItemBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtProjectVoiceItemBinding;->llLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder$onBindViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder$onBindViewHolder$1;-><init>(Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;Lcn/mucang/sundial/library/entity/ExamHallVoiceItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setLastClickTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/binder/ExamHallVoiceBinder;->lastClickTime:J

    return-void
.end method
