.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/manager/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;

.field public final synthetic b:Landroidx/appcompat/app/d;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;Landroidx/appcompat/app/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/e;->b:Landroidx/appcompat/app/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/e;->b:Landroidx/appcompat/app/d;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h$a;->f(Landroidx/appcompat/app/d;)V

    return-void
.end method
