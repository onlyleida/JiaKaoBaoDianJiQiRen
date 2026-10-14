.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/base/h;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/e;->b:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/e;->b:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/GearBinder;->n(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method
