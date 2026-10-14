.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$b;->p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/view/View;)V

    return-void
.end method
