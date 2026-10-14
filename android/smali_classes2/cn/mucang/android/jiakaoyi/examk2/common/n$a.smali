.class Lcn/mucang/android/jiakaoyi/examk2/common/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/examk2/common/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/examk2/common/n;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/common/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a(Lcn/mucang/android/jiakaoyi/examk2/common/n;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->isStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
