.class public Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryStat;

.field public b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public j:J

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;",
            ">;"
        }
    .end annotation
.end field

.field public m:J

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->c:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->d:J

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->f:J

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->g:Ljava/util/List;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->h:Ljava/util/List;

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->i:Ljava/util/HashMap;

    .line 9
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->j:J

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->k:Ljava/util/List;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->l:Ljava/util/List;

    .line 12
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->m:J

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->n:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->o:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->p:Ljava/util/Map;

    return-void
.end method
