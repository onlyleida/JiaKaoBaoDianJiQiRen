.class Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
