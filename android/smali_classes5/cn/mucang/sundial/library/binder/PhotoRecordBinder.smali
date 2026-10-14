.class public final Lcn/mucang/sundial/library/binder/PhotoRecordBinder;
.super Lcn/mucang/sundial/library/widget/ViewBindingBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder<",
        "Lcn/mucang/sundial/library/entity/PhotoEntity;",
        "Lcn/mucang/sundial/library/databinding/TtPhotoRecordItemBinding;",
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/sundial/library/binder/PhotoRecordBinder;",
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder;",
        "Lcn/mucang/sundial/library/entity/PhotoEntity;",
        "Lcn/mucang/sundial/library/databinding/TtPhotoRecordItemBinding;",
        "Lcn/mucang/sundial/library/widget/ViewBindingHolder;",
        "holder",
        "item",
        "Lkotlin/v;",
        "onBindViewHolder",
        "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/PhotoEntity;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/widget/ViewBindingBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/library/widget/ViewBindingHolder;

    check-cast p2, Lcn/mucang/sundial/library/entity/PhotoEntity;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/binder/PhotoRecordBinder;->onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/PhotoEntity;)V

    return-void
.end method

.method protected onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/PhotoEntity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/library/widget/ViewBindingHolder<",
            "Lcn/mucang/sundial/library/databinding/TtPhotoRecordItemBinding;",
            ">;",
            "Lcn/mucang/sundial/library/entity/PhotoEntity;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/sundial/library/entity/PhotoEntity;->getImageTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/p0;->b(J)Ljava/lang/String;

    move-result-object v2

    const-string v0, "TimeUtils.getDataYYYYMMDDSS(item.imageTime)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/library/databinding/TtPhotoRecordItemBinding;

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtPhotoRecordItemBinding;->date:Landroid/widget/TextView;

    const-string v3, "holder.viewBinding.date"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/library/databinding/TtPhotoRecordItemBinding;

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtPhotoRecordItemBinding;->time:Landroid/widget/TextView;

    const-string v3, "holder.viewBinding.time"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcn/mucang/sundial/library/entity/PhotoEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtPhotoRecordItemBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtPhotoRecordItemBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
