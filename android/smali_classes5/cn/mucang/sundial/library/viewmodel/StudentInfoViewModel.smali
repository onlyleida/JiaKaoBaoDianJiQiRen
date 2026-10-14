.class public final Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008(\u0010)J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0010\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0016\u001a\n \u0015*\u0004\u0018\u00010\u00140\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R(\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010$\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010#R\u0016\u0010%\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010#\u00a8\u0006+"
    }
    d2 = {
        "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;",
        "Landroidx/lifecycle/a;",
        "",
        "getCourseStartTime",
        "()J",
        "getSavedCourseTime",
        "",
        "getSavedDistance",
        "()D",
        "currentCourseTime",
        "totalDistance",
        "Lkotlin/v;",
        "saveCourseTimeAndDistance",
        "(JD)V",
        "restoreClassroomIfNeed",
        "()V",
        "getStudentInfo2Update",
        "",
        "isRestored",
        "Z",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "pref",
        "Landroid/content/SharedPreferences;",
        "Landroidx/lifecycle/i0;",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "studentInfoData",
        "Landroidx/lifecycle/i0;",
        "getStudentInfoData",
        "()Landroidx/lifecycle/i0;",
        "setStudentInfoData",
        "(Landroidx/lifecycle/i0;)V",
        "_savedCourseDistance",
        "D",
        "_savedCourseTime",
        "J",
        "_courseStartTime",
        "classroomId",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;)V",
        "Companion",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel$Companion;

.field private static final KEY_CLASSROOM_ID:Ljava/lang/String; = "classroom_id"

.field private static final KEY_COURSE_DISTANCE:Ljava/lang/String; = "course_distance"

.field private static final KEY_COURSE_TIME:Ljava/lang/String; = "course_time"

.field private static final KEY_LOGIN_TIME:Ljava/lang/String; = "login_time"

.field private static final PREF_NAME:Ljava/lang/String; = "saved_classroom"

.field public static final TAG:Ljava/lang/String; = "StudentInfoViewModel"

.field private static lastCourseTime:J


# instance fields
.field private _courseStartTime:J

.field private _savedCourseDistance:D

.field private _savedCourseTime:J

.field private classroomId:J

.field private isRestored:Z

.field private final pref:Landroid/content/SharedPreferences;

.field private studentInfoData:Landroidx/lifecycle/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->Companion:Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel$Companion;

    const-wide/16 v0, -0x1

    .line 1
    sput-wide v0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->lastCourseTime:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    const-string v0, "saved_classroom"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->pref:Landroid/content/SharedPreferences;

    .line 3
    new-instance p1, Landroidx/lifecycle/i0;

    invoke-direct {p1}, Landroidx/lifecycle/i0;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->studentInfoData:Landroidx/lifecycle/i0;

    return-void
.end method

.method public static final synthetic access$getLastCourseTime$cp()J
    .locals 2

    .line 1
    sget-wide v0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->lastCourseTime:J

    return-wide v0
.end method

.method public static final synthetic access$setLastCourseTime$cp(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->lastCourseTime:J

    return-void
.end method


# virtual methods
.method public final getCourseStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->_courseStartTime:J

    return-wide v0
.end method

.method public final getSavedCourseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->_savedCourseTime:J

    return-wide v0
.end method

.method public final getSavedDistance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->_savedCourseDistance:D

    return-wide v0
.end method

.method public final getStudentInfo2Update()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel$getStudentInfo2Update$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel$getStudentInfo2Update$1;-><init>(Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getStudentInfoData()Landroidx/lifecycle/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->studentInfoData:Landroidx/lifecycle/i0;

    return-object v0
.end method

.method public final restoreClassroomIfNeed()V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getClassroomId()J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->classroomId:J

    .line 4
    iget-object v2, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->pref:Landroid/content/SharedPreferences;

    const-string v3, "classroom_id"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v6, 0x1

    cmp-long v7, v2, v0

    if-nez v7, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v7, v0, v2

    if-lez v7, :cond_2

    .line 5
    iget-boolean v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->isRestored:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iput-boolean v6, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->isRestored:Z

    const-string v0, "restoreClassroomIfNeed +1"

    .line 7
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->pref:Landroid/content/SharedPreferences;

    const-string v1, "login_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->_courseStartTime:J

    .line 10
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->pref:Landroid/content/SharedPreferences;

    const-string v1, "course_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Lkotlin/a0/d;->c(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->_savedCourseTime:J

    .line 11
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->pref:Landroid/content/SharedPreferences;

    const-string v1, "course_distance"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0, v2}, Lkotlin/a0/d;->a(FF)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->_savedCourseDistance:D

    .line 12
    iget-wide v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->_savedCourseTime:J

    sput-wide v0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->lastCourseTime:J

    goto :goto_1

    .line 13
    :cond_2
    iput-boolean v6, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->isRestored:Z

    .line 14
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->_courseStartTime:J

    .line 16
    sput-wide v4, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->lastCourseTime:J

    :cond_3
    :goto_1
    return-void
.end method

.method public final saveCourseTimeAndDistance(JD)V
    .locals 4

    .line 1
    sput-wide p1, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->lastCourseTime:J

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->pref:Landroid/content/SharedPreferences;

    const-string v1, "pref"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-wide v1, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->classroomId:J

    const-string v3, "classroom_id"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->getCourseStartTime()J

    move-result-wide v1

    const-string v3, "login_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "course_time"

    .line 7
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    double-to-float p1, p3

    const-string p2, "course_distance"

    .line 8
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setStudentInfoData(Landroidx/lifecycle/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->studentInfoData:Landroidx/lifecycle/i0;

    return-void
.end method
