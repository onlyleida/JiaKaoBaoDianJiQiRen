.class final Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;)V",
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
.field final synthetic $imageEvent:Landroidx/lifecycle/i0;

.field final synthetic $imageObserver:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

.field final synthetic $uploadPhotoId:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/i0;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;->this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    iput-object p2, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;->$imageObserver:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;->$imageEvent:Landroidx/lifecycle/i0;

    iput-object p4, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;->$uploadPhotoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;->$studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;->$imageObserver:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/i0$b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;->$imageEvent:Landroidx/lifecycle/i0;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->m(Landroidx/lifecycle/a0;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;->$uploadPhotoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;->photoId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2$2;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2$2;-><init>(Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;)V

    invoke-static {p1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p1, "-Sundial \u5b66\u5458\u9759\u9ed8\u7167\u7247\u4e0a\u4f20\u5931\u8d25"

    .line 6
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;->this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    iget-object p1, p1, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcn/mucang/sundial/library/SundialCallBack;->onResult(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$2;->onChanged(Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;)V

    return-void
.end method
