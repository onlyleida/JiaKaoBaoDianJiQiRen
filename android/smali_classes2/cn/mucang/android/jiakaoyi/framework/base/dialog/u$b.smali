.class Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->j(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;JLcn/mucang/android/jiakaoyi/framework/h/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$b;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$b;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$b;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$b;->a:Ljava/util/concurrent/Callable;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->d(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    return-void
.end method
