.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/base/h;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/d;->c:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/d;->c:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;->p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/SelectLineBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method
