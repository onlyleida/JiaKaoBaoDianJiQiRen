.class final Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder$uploadVideo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->u(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $model:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder$uploadVideo$1;->$model:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;F)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder$uploadVideo$1;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;F)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;F)V
    .locals 1

    const-string v0, "$model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->y(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;F)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder$uploadVideo$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder$uploadVideo$1;->$model:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getT()F

    move-result v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->b()Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getT()F

    move-result v1

    :goto_0
    sub-float/2addr v0, v1

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->a:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->f(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder$uploadVideo$1;->$model:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/record/b;

    invoke-direct {v2, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;F)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method
