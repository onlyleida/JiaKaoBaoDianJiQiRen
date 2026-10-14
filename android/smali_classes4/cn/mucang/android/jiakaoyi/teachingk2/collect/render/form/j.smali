.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;->b:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;->b:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/j;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/m;->f(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
