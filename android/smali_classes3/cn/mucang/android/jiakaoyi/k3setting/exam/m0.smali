.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/exam/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/m0;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/m0;->b:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/m0;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/m0;->b:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/i1$b;->d(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/view/View;)V

    return-void
.end method
