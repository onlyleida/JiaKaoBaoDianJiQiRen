.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$c;
.super Landroidx/fragment/app/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;-><init>()V

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/ErrorFragment;-><init>()V

    return-object p1
.end method
