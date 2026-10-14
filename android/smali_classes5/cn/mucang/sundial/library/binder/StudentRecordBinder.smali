.class public final Lcn/mucang/sundial/library/binder/StudentRecordBinder;
.super Lcn/mucang/sundial/library/widget/ViewBindingBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder<",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;",
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
        "Lcn/mucang/sundial/library/binder/StudentRecordBinder;",
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder;",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;",
        "Lcn/mucang/sundial/library/widget/ViewBindingHolder;",
        "holder",
        "item",
        "Lkotlin/v;",
        "onBindViewHolder",
        "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V",
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
    iget-wide v0, p0, Lcn/mucang/sundial/library/binder/StudentRecordBinder;->lastClickTime:J

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/library/widget/ViewBindingHolder;

    check-cast p2, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/binder/StudentRecordBinder;->onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    return-void
.end method

.method protected onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/library/widget/ViewBindingHolder<",
            "Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;",
            ">;",
            "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
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

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;->name:Landroid/widget/TextView;

    const-string v1, "holder.viewBinding.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    const/4 v4, 0x5

    if-le v1, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item.studentName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;->desc:Landroid/widget/TextView;

    const-string v1, "holder.viewBinding.desc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xf

    const-string v6, "item.idCard"

    if-eq v1, v5, :cond_2

    const/16 v5, 0x12

    if-eq v1, v5, :cond_1

    .line 4
    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "xxxxxxxxx"

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xb

    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "xxxxxx"

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;->llLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$1;-><init>(Lcn/mucang/sundial/library/binder/StudentRecordBinder;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtStudentRecordItemBinding;->cancel:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$2;

    invoke-direct {v0, p2}, Lcn/mucang/sundial/library/binder/StudentRecordBinder$onBindViewHolder$2;-><init>(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setLastClickTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/binder/StudentRecordBinder;->lastClickTime:J

    return-void
.end method
