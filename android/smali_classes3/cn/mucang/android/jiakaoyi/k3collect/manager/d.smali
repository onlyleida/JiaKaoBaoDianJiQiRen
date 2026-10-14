.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/manager/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/d;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/d;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->d(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;)V

    return-void
.end method
