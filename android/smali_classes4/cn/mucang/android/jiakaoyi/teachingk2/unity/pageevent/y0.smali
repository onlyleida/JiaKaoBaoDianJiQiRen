.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/y0;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->a()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->g(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/y0;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->a(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->i(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V

    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/c;->b()V

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->g(Z)V

    return-void
.end method
