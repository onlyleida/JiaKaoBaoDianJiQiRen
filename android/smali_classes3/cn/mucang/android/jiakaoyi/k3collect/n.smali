.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Intent;Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/n;->a:I

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/n;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/n;->c:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/n;->a:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/n;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/n;->c:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->Y0(ILandroid/content/Intent;Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V

    return-void
.end method
