.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/appcompat/widget/d0;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;Ljava/util/List;Landroidx/appcompat/widget/d0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;->b:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;->c:Landroidx/appcompat/widget/d0;

    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;->d:I

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;->b:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;->c:Landroidx/appcompat/widget/d0;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;->d:I

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->o(Ljava/util/List;Landroidx/appcompat/widget/d0;ILandroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
