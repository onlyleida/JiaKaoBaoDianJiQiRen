.class Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->c:Ljava/util/Map;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->e:I

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->d:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->d:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->e:I

    return p0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->e:I

    return p1
.end method
