.class Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/o0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/f;)Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;->b(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/f;)Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/f;)Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;->b:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;->c:Ljava/lang/ref/Reference;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;->b:Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;->c:Ljava/lang/ref/Reference;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/framework/tts/f;

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->y(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method
