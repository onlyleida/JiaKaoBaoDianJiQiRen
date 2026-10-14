.class Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;

.field final b:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;

.field final c:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

.field final d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

.field e:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

.field f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation
.end field

.field h:I


# direct methods
.method private constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    const-wide/16 p2, 0x5dc

    invoke-direct {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    return-void
.end method
