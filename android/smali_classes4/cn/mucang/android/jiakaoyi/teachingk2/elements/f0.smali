.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->a:I

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->b:Ljava/util/Set;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->c:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->d:Ljava/util/Map;

    return-void
.end method
