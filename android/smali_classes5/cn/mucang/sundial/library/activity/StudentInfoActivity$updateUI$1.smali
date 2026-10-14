.class final Lcn/mucang/sundial/library/activity/StudentInfoActivity$updateUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/StudentInfoActivity;->updateUI(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
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
.field final synthetic $info:Lcn/mucang/sundial/android/db/entity/StudentInfo;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$updateUI$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$updateUI$1;->$info:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$updateUI$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->takeCoachPhoto:Landroid/widget/LinearLayout;

    const-string v2, "takeCoachPhoto"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$updateUI$1;->$info:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->isCoachTakePhoto()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 3
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$updateUI$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/d;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$updateUI$1;->$info:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 7
    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
