.class final Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->n(ZLjava/util/List;Lkotlin/coroutines/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager"
    f = "LocalConfigManager.kt"
    l = {
        0x49,
        0x4b
    }
    m = "loadConfig"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->label:I

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$loadConfig$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;ZLjava/util/List;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
