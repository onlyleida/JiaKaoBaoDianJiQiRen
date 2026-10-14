.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;IILcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/q;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/q;->b:I

    iput p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/q;->c:I

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/q;->d:Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/q;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/q;->b:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/q;->c:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/q;->d:Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$b;->b(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;IILcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Landroid/content/DialogInterface;I)V

    return-void
.end method
