.class final Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel$getPhotoRecords$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;->getPhotoRecords()V
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
.field final synthetic this$0:Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel$getPhotoRecords$1;->this$0:Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/entity/PhotoRecordInfo;

    invoke-direct {v0}, Lcn/mucang/sundial/library/entity/PhotoRecordInfo;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    const-string v2, "SundialManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v1

    .line 3
    sget-object v2, Lcn/mucang/sundial/library/util/SubjectUtil;->INSTANCE:Lcn/mucang/sundial/library/util/SubjectUtil;

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCourseCode()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcn/mucang/sundial/android/SundialManager;->getCourseTypeByCourseCode(Ljava/lang/String;)I

    move-result v3

    .line 5
    invoke-virtual {v2, v3}, Lcn/mucang/sundial/library/util/SubjectUtil;->subject2param(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Lcn/mucang/sundial/library/http/PhotoApi;

    invoke-direct {v3}, Lcn/mucang/sundial/library/http/PhotoApi;-><init>()V

    const-string v4, "student"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v1

    const-string v4, "student.idCard"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lcn/mucang/sundial/library/http/PhotoApi;->getPhotos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/entity/PhotoRecordInfo;->setInfoList(Ljava/util/List;)V

    .line 7
    iget-object v1, p0, Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel$getPhotoRecords$1;->this$0:Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;->getPhotoRecordData()Landroidx/lifecycle/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
