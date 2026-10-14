.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/ErrorItemBinder;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/ErrorItemBinder;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/ErrorItemBinder;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/ErrorItemBinder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/ErrorItemBinder;->o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/ErrorItemBinder;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;Landroid/view/View;)V

    return-void
.end method
