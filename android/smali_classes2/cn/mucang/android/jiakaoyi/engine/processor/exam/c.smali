.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field private final b:Lcn/mucang/android/jiakaoyi/engine/i/c;

.field public c:Z

.field public d:Z

.field public final e:Z

.field public final f:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

.field public final g:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZLcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZLcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 4
    iput-boolean p6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->e:Z

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->f:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/c;

    .line 7
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->c:Z

    .line 8
    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->d:Z

    .line 9
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->g:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;
    .locals 10

    .line 1
    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->f:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/c;

    iget-boolean v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->c:Z

    iget-boolean v5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->d:Z

    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->e:Z

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;->g:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    move-object v0, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZLcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;)V

    return-object v9
.end method
