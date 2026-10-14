.class Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->b(ZLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a$a;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a$a;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method
