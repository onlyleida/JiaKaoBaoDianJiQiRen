.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/a0;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Landroidx/appcompat/widget/d0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/a0;[Ljava/lang/String;Landroidx/appcompat/widget/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/a0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d;->c:Landroidx/appcompat/widget/d0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/a0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d;->c:Landroidx/appcompat/widget/d0;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/a0;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/a0;[Ljava/lang/String;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
