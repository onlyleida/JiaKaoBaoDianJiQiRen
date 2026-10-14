.class public final Lcn/mucang/android/jiakaoyi/framework/language/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u001c\u0010\u0011\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\tH\u0007J\u001c\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u0007\u001a&\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\t0\t \n*\u0012\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\t0\t\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/language/LanguageManager;",
        "",
        "()V",
        "languageMap",
        "Landroid/util/SparseArray;",
        "",
        "Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;",
        "typeCache",
        "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;",
        "",
        "kotlin.jvm.PlatformType",
        "getLanguage",
        "Lcn/mucang/android/jiakaoyi/framework/language/Language;",
        "initLanguage",
        "",
        "task",
        "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;",
        "setData",
        "array",
        "setLanguage",
        "type",
        "textEquals",
        "",
        "text1",
        "",
        "text2",
        "framework_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/language/a;

.field private static final b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/language/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/language/a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/language/a;->a:Lcn/mucang/android/jiakaoyi/framework/language/a;

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Chinese:Lcn/mucang/android/jiakaoyi/framework/language/Language;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/language/Language;->getType()I

    move-result v0

    const-string v1, "keyLanguageType"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/language/a;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/language/a;->c:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcn/mucang/android/jiakaoyi/framework/language/Language;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Companion:Lcn/mucang/android/jiakaoyi/framework/language/Language$a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/language/a;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/language/Language$a;->a(I)Lcn/mucang/android/jiakaoyi/framework/language/Language;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 9

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/language/a;->a:Lcn/mucang/android/jiakaoyi/framework/language/a;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/language/a;->a()Lcn/mucang/android/jiakaoyi/framework/language/Language;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Chinese:Lcn/mucang/android/jiakaoyi/framework/language/Language;

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/language/a;->c:Landroid/util/SparseArray;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/language/a;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;

    .line 4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->getChinese()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcn/mucang/android/jiakaoyi/framework/language/a;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5
    iget v4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->a:I

    if-lez v4, :cond_3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->getSourceId()J

    move-result-wide v4

    iget v6, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->a:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    .line 6
    :cond_3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->b:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->getSourceId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->b:Ljava/lang/String;

    const-string v5, "task.key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->getSourceId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v2}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    move-object v2, v3

    :cond_5
    :goto_0
    if-nez v2, :cond_6

    return-void

    .line 7
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u627e\u5230\u5339\u914d\u7684\u7ef4\u8bed\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->getSecondLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->n:Ljava/lang/String;

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->Padiguli:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->m:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    return-void
.end method

.method public static final c(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/language/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    invoke-static {v0, p0}, Landroidx/core/util/j;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method public static final d(I)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/language/a;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
