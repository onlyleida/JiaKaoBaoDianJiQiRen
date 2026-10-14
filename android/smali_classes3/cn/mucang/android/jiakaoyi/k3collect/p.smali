.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;


# direct methods
.method public synthetic constructor <init>(ILcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/p;->a:I

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/p;->b:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/p;->a:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/p;->b:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->a(ILcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
