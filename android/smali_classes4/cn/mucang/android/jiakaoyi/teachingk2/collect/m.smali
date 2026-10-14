.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity$b;->n(Lcn/mucang/android/jiakaoyi/teachingk2/collect/MaterialSelectActivity;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;Landroid/view/View;)V

    return-void
.end method
