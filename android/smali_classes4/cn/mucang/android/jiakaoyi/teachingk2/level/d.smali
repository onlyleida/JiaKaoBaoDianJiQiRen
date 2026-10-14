.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/level/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

.field public final synthetic b:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/d;->b:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/d;->b:Lkotlin/jvm/b/a;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->g(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;Landroid/view/View;)V

    return-void
.end method
