.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/exam/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/r;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/r;->b:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/r;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/r;->b:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    invoke-static {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->q(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;Landroid/content/DialogInterface;I)V

    return-void
.end method
