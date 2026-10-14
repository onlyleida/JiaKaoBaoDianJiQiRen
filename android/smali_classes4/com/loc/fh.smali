.class public final Lcom/loc/fh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Z = false

.field private static B:I = 0x0

.field private static C:Z = false

.field private static D:Z = false

.field private static E:Z = false

.field private static F:Z = false

.field private static G:J = 0x0L

.field private static H:Z = false

.field private static I:I = 0x0

.field private static J:Z = false

.field private static K:I = 0x0

.field private static L:Z = false

.field private static M:Ljava/lang/String; = null

.field private static N:J = 0x0L

.field static a:J = 0x0L

.field public static volatile b:J = 0x0L

.field static c:Z = false

.field public static d:Z = false

.field public static e:Z = false

.field public static f:I = 0x0

.field public static g:I = 0x0

.field private static volatile h:Z = false

.field private static i:Z = true

.field private static j:I = 0x3e8

.field private static k:I = 0xc8

.field private static l:Z = false

.field private static m:I = 0x14

.field private static n:I = 0x0

.field private static volatile o:I = 0x0

.field private static p:Z = true

.field private static q:Z = false

.field private static r:I = -0x1

.field private static s:J

.field private static t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile v:Z

.field private static w:Z

.field private static x:J

.field private static y:Z

.field private static z:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loc/fh;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loc/fh;->u:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/fh;->v:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/loc/fh;->w:Z

    const-wide/32 v2, 0x493e0

    sput-wide v2, Lcom/loc/fh;->x:J

    sput-boolean v0, Lcom/loc/fh;->y:Z

    const-wide v2, 0x3fe3c6a7ef9db22dL    # 0.618

    sput-wide v2, Lcom/loc/fh;->z:D

    sput-boolean v1, Lcom/loc/fh;->A:Z

    const/16 v2, 0x50

    sput v2, Lcom/loc/fh;->B:I

    const-wide/32 v2, 0x36ee80

    sput-wide v2, Lcom/loc/fh;->a:J

    sput-boolean v0, Lcom/loc/fh;->C:Z

    sput-boolean v1, Lcom/loc/fh;->D:Z

    sput-boolean v0, Lcom/loc/fh;->E:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/loc/fh;->b:J

    sput-boolean v1, Lcom/loc/fh;->c:Z

    sput-boolean v1, Lcom/loc/fh;->F:Z

    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/loc/fh;->G:J

    sput-boolean v1, Lcom/loc/fh;->H:Z

    sput v1, Lcom/loc/fh;->I:I

    sput-boolean v0, Lcom/loc/fh;->J:Z

    const/4 v1, 0x5

    sput v1, Lcom/loc/fh;->K:I

    sput-boolean v0, Lcom/loc/fh;->L:Z

    const-string v1, "CMjAzLjEwNy4xLjEvMTU0MDgxL2Q"

    sput-object v1, Lcom/loc/fh;->M:Ljava/lang/String;

    sput-wide v2, Lcom/loc/fh;->N:J

    sput-boolean v0, Lcom/loc/fh;->d:Z

    sput-boolean v0, Lcom/loc/fh;->e:Z

    const/16 v0, 0x5000

    sput v0, Lcom/loc/fh;->f:I

    const v0, 0xa4cb80

    sput v0, Lcom/loc/fh;->g:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/loc/fh;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/fh;->h:Z

    invoke-static {}, Lcom/loc/fi;->c()Lcom/loc/v;

    move-result-object v0

    invoke-static {}, Lcom/loc/fi;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loc/fh$1;

    invoke-direct {v2, p0}, Lcom/loc/fh$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2}, Lcom/loc/l;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Lcom/loc/l$a;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    .locals 5

    const-string v0, "asw"

    const-string v1, "AuthUtil"

    :try_start_0
    const-string v2, "13S"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p1, :cond_1

    :try_start_1
    const-string v2, "at"

    const/16 v3, 0x7b

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sput-wide v2, Lcom/loc/fh;->a:J

    const-string v4, "13S_at"

    invoke-static {p2, v4, v2, v3}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "requestSdkAuthInterval"

    invoke-static {v2, v1, v3}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, p2}, Lcom/loc/fh;->d(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "nla"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/fh;->D:Z

    const-string v3, "13S_nla"

    invoke-static {p2, v3, v2}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/loc/fh;->F:Z

    invoke-static {p2, v0, v1}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :try_start_5
    const-string v0, "mlpl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const-string v0, "13S_mlpl"

    if-eqz p1, :cond_0

    :try_start_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/loc/fh;->a(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result p0

    sput-boolean p0, Lcom/loc/fh;->E:Z

    return-void

    :cond_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/loc/fh;->E:Z

    invoke-static {p2, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :cond_1
    return-void

    :catchall_4
    move-exception p0

    const-string p1, "loadConfigAbleStatus"

    invoke-static {p0, v1, p1}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/loc/l$b;Landroid/content/SharedPreferences$Editor;)V
    .locals 9

    :try_start_0
    iget-object p0, p0, Lcom/loc/l$b;->g:Lcom/loc/l$b$a;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/loc/l$b$a;->a:Z

    sput-boolean v0, Lcom/loc/fh;->i:Z

    const-string v1, "exception"

    invoke-static {p1, v1, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/loc/l$b$a;->c:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "pms"

    const-string v1, "rot"

    const-string v2, "ms"

    const-string v3, "igu"

    const-string v4, "mpn"

    const-string v5, "fn"

    if-eqz p0, :cond_2

    :try_start_1
    sget v6, Lcom/loc/fh;->j:I

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/loc/fh;->j:I

    sget v6, Lcom/loc/fh;->k:I

    invoke-virtual {p0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/loc/fh;->k:I

    const/16 v7, 0x1f4

    if-le v6, v7, :cond_0

    sput v7, Lcom/loc/fh;->k:I

    :cond_0
    sget v6, Lcom/loc/fh;->k:I

    const/16 v7, 0x1e

    if-ge v6, v7, :cond_1

    sput v7, Lcom/loc/fh;->k:I

    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/loc/fh;->l:Z

    sget v6, Lcom/loc/fh;->m:I

    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/loc/fh;->m:I

    invoke-virtual {p0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/loc/fh;->o:I

    invoke-virtual {p0, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/loc/fh;->n:I

    :cond_2
    sget p0, Lcom/loc/fh;->j:I

    sget-boolean v6, Lcom/loc/fh;->l:Z

    sget v7, Lcom/loc/fh;->m:I

    sget v8, Lcom/loc/fh;->n:I

    invoke-static {p0, v6, v7, v8}, Lcom/loc/bp;->a(IZII)V

    sget-boolean p0, Lcom/loc/fh;->l:Z

    sget v6, Lcom/loc/fh;->n:I

    invoke-static {p0, v6}, Lcom/loc/br;->a(ZI)V

    sget p0, Lcom/loc/fh;->j:I

    invoke-static {p1, v5, p0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    sget p0, Lcom/loc/fh;->k:I

    invoke-static {p1, v4, p0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    sget-boolean p0, Lcom/loc/fh;->l:Z

    invoke-static {p1, v3, p0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    sget p0, Lcom/loc/fh;->m:I

    invoke-static {p1, v2, p0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    sget p0, Lcom/loc/fh;->o:I

    invoke-static {p1, v1, p0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    sget p0, Lcom/loc/fh;->n:I

    invoke-static {p1, v0, p0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AuthUtil"

    const-string v0, "loadConfigDataUploadException"

    invoke-static {p0, p1, v0}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    .locals 7

    :try_start_0
    const-string v0, "11G"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "able"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/fh;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "c"

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/loc/fh;->x:J

    :cond_0
    const-string v0, "fa"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/fh;->y:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    const-string v4, "ms"

    const-wide v5, 0x3fe3c6a7ef9db22dL    # 0.618

    invoke-virtual {p0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/loc/fh;->z:D

    const-string p0, "ca"

    sget-boolean v0, Lcom/loc/fh;->w:Z

    invoke-static {p1, p0, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string p0, "ct"

    sget-wide v0, Lcom/loc/fh;->x:J

    invoke-static {p1, p0, v0, v1}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;J)V

    const-string p0, "11G_fa"

    sget-boolean v0, Lcom/loc/fh;->y:Z

    invoke-static {p1, p0, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string p0, "11G_ms"

    sget-wide v0, Lcom/loc/fh;->z:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AuthUtil"

    const-string v0, "loadConfigDataCacheAble"

    invoke-static {p0, p1, v0}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->i:Z

    return v0
.end method

.method public static a(J)Z
    .locals 6

    sget-boolean v0, Lcom/loc/fh;->w:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/loc/fp;->a()J

    move-result-wide v2

    sub-long/2addr v2, p0

    sget-wide p0, Lcom/loc/fh;->x:J

    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-ltz v0, :cond_2

    cmp-long v0, v2, p0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static a(Landroid/content/Context;Lcom/loc/l$b;)Z
    .locals 2

    :try_start_0
    const-string v0, "pref"

    invoke-static {p0, v0}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {p1, v0}, Lcom/loc/fh;->a(Lcom/loc/l$b;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {p0}, Lcom/loc/fh;->c(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/loc/l$b;->f:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_0
    return v1

    :cond_1
    :try_start_3
    invoke-static {p0, p1, v0}, Lcom/loc/fh;->a(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {p1, v0}, Lcom/loc/fh;->a(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {p1, v0}, Lcom/loc/fh;->c(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {p1, v0}, Lcom/loc/fh;->e(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {p1, v0}, Lcom/loc/fh;->g(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {p1, v0}, Lcom/loc/fh;->f(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {p1, v0}, Lcom/loc/fh;->h(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {p1, v0}, Lcom/loc/fh;->b(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_2

    :try_start_4
    invoke-static {v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_2
    return v1

    :catchall_2
    const/4 v0, 0x0

    :catchall_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-static {v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONArray;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/loc/fp;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/loc/fh;->k:I

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8

    const-string v0, ""

    const-string v1, "AuthUtil"

    const-string v2, "pref"

    sget-boolean v3, Lcom/loc/fh;->v:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/loc/fh;->v:Z

    :try_start_0
    const-string v3, "exception"

    sget-boolean v4, Lcom/loc/fh;->i:Z

    invoke-static {p0, v2, v3, v4}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/loc/fh;->i:Z

    invoke-static {p0}, Lcom/loc/fh;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "loadLastAbleState p1"

    invoke-static {v3, v1, v4}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    :try_start_1
    const-string v4, "fn"

    sget v5, Lcom/loc/fh;->j:I

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/fh;->j:I

    const-string v4, "mpn"

    sget v5, Lcom/loc/fh;->k:I

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/fh;->k:I

    const-string v4, "igu"

    sget-boolean v5, Lcom/loc/fh;->l:Z

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->l:Z

    const-string v4, "ms"

    sget v5, Lcom/loc/fh;->m:I

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/fh;->m:I

    const-string v4, "rot"

    invoke-static {p0, v2, v4, v3}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/fh;->o:I

    const-string v4, "pms"

    invoke-static {p0, v2, v4, v3}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/fh;->n:I

    sget v5, Lcom/loc/fh;->j:I

    sget-boolean v6, Lcom/loc/fh;->l:Z

    sget v7, Lcom/loc/fh;->m:I

    invoke-static {v5, v6, v7, v4}, Lcom/loc/bp;->a(IZII)V

    sget-boolean v4, Lcom/loc/fh;->l:Z

    sget v5, Lcom/loc/fh;->n:I

    invoke-static {v4, v5}, Lcom/loc/br;->a(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    const-string v5, "loadLastAbleState p2"

    invoke-static {v4, v1, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    const-string v4, "ca"

    sget-boolean v5, Lcom/loc/fh;->w:Z

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->w:Z

    const-string v4, "ct"

    sget-wide v5, Lcom/loc/fh;->x:J

    invoke-static {p0, v2, v4, v5, v6}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/loc/fh;->x:J

    const-string v4, "11G_fa"

    sget-boolean v5, Lcom/loc/fh;->y:Z

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->y:Z

    const-string v4, "11G_ms"

    sget-wide v5, Lcom/loc/fh;->z:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sput-wide v4, Lcom/loc/fh;->z:D

    const-wide v6, 0x3fc999999999999aL    # 0.2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sput-wide v4, Lcom/loc/fh;->z:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    const-string v5, "loadLastAbleState p3"

    invoke-static {v4, v1, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    :try_start_3
    const-string v4, "fr"

    sget-boolean v5, Lcom/loc/fh;->c:Z

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v4

    const-string v5, "loadLastAbleState p4"

    invoke-static {v4, v1, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    :try_start_4
    const-string v4, "asw"

    sget-boolean v5, Lcom/loc/fh;->F:Z

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->F:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v4

    const-string v5, "loadLastAbleState p5"

    invoke-static {v4, v1, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    :try_start_5
    const-string v4, "awsi"

    sget-wide v5, Lcom/loc/fh;->G:J

    invoke-static {p0, v2, v4, v5, v6}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/loc/fh;->G:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v4

    const-string v5, "loadLastAbleState p6"

    invoke-static {v4, v1, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    :try_start_6
    const-string v4, "15ua"

    sget-boolean v5, Lcom/loc/fh;->H:Z

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->H:Z

    const-string v4, "15un"

    sget v5, Lcom/loc/fh;->I:I

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/fh;->I:I

    const-string v4, "15ust"

    sget-wide v5, Lcom/loc/fh;->N:J

    invoke-static {p0, v2, v4, v5, v6}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/loc/fh;->N:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v4

    const-string v5, "loadLastAbleState p7"

    invoke-static {v4, v1, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    :try_start_7
    const-string v4, "ok9"

    sget-boolean v5, Lcom/loc/fh;->J:Z

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->J:Z

    const-string v4, "ok10"

    sget v5, Lcom/loc/fh;->K:I

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/fh;->K:I

    const-string v4, "ok11"

    sget-object v5, Lcom/loc/fh;->M:Ljava/lang/String;

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/loc/fh;->M:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v4

    const-string v5, "loadLastAbleState p8"

    invoke-static {v4, v1, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    :try_start_8
    const-string v4, "17ya"

    invoke-static {p0, v2, v4, v3}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->d:Z

    const-string v4, "17ym"

    invoke-static {p0, v2, v4, v3}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->e:Z

    const-string v4, "17yi"

    const/4 v5, 0x2

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    sput v4, Lcom/loc/fh;->g:I

    const-string v4, "17yx"

    const/16 v5, 0x64

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x400

    sput v4, Lcom/loc/fh;->f:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v4

    const-string v5, "loadLastAbleState p9"

    invoke-static {v4, v1, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    :try_start_9
    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v4

    sput-wide v4, Lcom/loc/fh;->b:J

    const-string v4, "13S_at"

    sget-wide v5, Lcom/loc/fh;->a:J

    invoke-static {p0, v2, v4, v5, v6}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/loc/fh;->a:J

    const-string v4, "13S_nla"

    sget-boolean v5, Lcom/loc/fh;->D:Z

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->D:Z

    const-string v4, "13J_able"

    sget-boolean v5, Lcom/loc/fh;->A:Z

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->A:Z

    const-string v4, "13J_c"

    sget v5, Lcom/loc/fh;->B:I

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/fh;->B:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception v4

    const-string v5, "loadLastAbleState p10"

    invoke-static {v4, v1, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-static {p0}, Lcom/loc/l;->b(Landroid/content/Context;)V

    :try_start_a
    const-string v4, "13S_mlpl"

    const/4 v5, 0x0

    invoke-static {p0, v2, v4, v5}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/loc/w;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/loc/fh;->a(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v4

    sput-boolean v4, Lcom/loc/fh;->E:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_a

    :catchall_a
    move-exception v4

    const-string v5, "loadLastAbleState p11"

    invoke-static {v4, v1, v5}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_a
    :try_start_b
    const-string v4, "197a"

    invoke-static {p0, v2, v4, v3}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "197dv"

    invoke-static {p0, v2, v5, v0}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "197tv"

    invoke-static {p0, v2, v6, v0}, Lcom/loc/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v4, :cond_3

    sget-object v0, Lcom/loc/fi;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/loc/fi;->b:[Ljava/lang/String;

    array-length v2, v0

    :goto_b
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sput-object p0, Lcom/loc/fi;->a:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_3
    return-void

    :catchall_b
    move-exception p0

    const-string v0, "loadLastAbleState p12"

    invoke-static {p0, v1, v0}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "197"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "able"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "197a"

    invoke-static {p1, v1, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "197tv"

    const-string v2, "197dv"

    const-string v3, ""

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "sv"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tv"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1, v2, v3}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, v3}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/loc/fh;->o:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/loc/fh;->o:I

    :cond_0
    sget v0, Lcom/loc/fh;->o:I

    return v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/loc/fi;->c()Lcom/loc/v;

    move-result-object v0

    sget-boolean v1, Lcom/loc/fh;->i:Z

    invoke-virtual {v0, v1}, Lcom/loc/v;->a(Z)V

    invoke-static {p0, v0}, Lcom/loc/am;->a(Landroid/content/Context;Lcom/loc/v;)Lcom/loc/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static c(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    :try_start_0
    const-string v0, "13J"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "able"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/fh;->A:Z

    if-eqz v0, :cond_0

    const-string v0, "c"

    sget v1, Lcom/loc/fh;->B:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/loc/fh;->B:I

    :cond_0
    const-string p0, "13J_able"

    sget-boolean v0, Lcom/loc/fh;->A:Z

    invoke-static {p1, p0, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string p0, "13J_c"

    sget v0, Lcom/loc/fh;->B:I

    invoke-static {p1, p0, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AuthUtil"

    const-string v0, "loadConfigDataGpsGeoAble"

    invoke-static {p0, p1, v0}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()J
    .locals 2

    sget-wide v0, Lcom/loc/fh;->x:J

    return-wide v0
.end method

.method private static d(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "re"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/loc/fh;->c:Z

    const-string v0, "fr"

    invoke-static {p1, v0, p0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "AuthUtil"

    const-string v0, "checkReLocationAble"

    invoke-static {p0, p1, v0}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    :try_start_0
    const-string v0, "15O"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "able"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "iv"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    sput-wide v0, Lcom/loc/fh;->G:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/loc/fh;->G:J

    :goto_0
    const-string p0, "awsi"

    sget-wide v0, Lcom/loc/fh;->G:J

    invoke-static {p1, p0, v0, v1}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->w:Z

    return v0
.end method

.method private static f(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "17Y"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "able"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/fh;->d:Z

    const-string v2, "17ya"

    invoke-static {p1, v2, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v0, "mup"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/fh;->e:Z

    const-string v1, "17ym"

    invoke-static {p1, v1, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v0, "max"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    const-string v1, "17yx"

    invoke-static {p1, v1, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lcom/loc/fh;->f:I

    :cond_1
    const-string v0, "inv"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_2

    const-string v0, "17yi"

    invoke-static {p1, v0, p0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    mul-int/lit8 p0, p0, 0x3c

    mul-int/lit8 p0, p0, 0x3c

    mul-int/lit16 p0, p0, 0x3e8

    sput p0, Lcom/loc/fh;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->y:Z

    return v0
.end method

.method public static g()D
    .locals 2

    sget-wide v0, Lcom/loc/fh;->z:D

    return-wide v0
.end method

.method private static g(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    .locals 5

    :try_start_0
    const-string v0, "15U"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "able"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "yn"

    sget v2, Lcom/loc/fh;->I:I

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "sysTime"

    sget-wide v3, Lcom/loc/fh;->N:J

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/loc/fh;->N:J

    const-string p0, "15ua"

    invoke-static {p1, p0, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string p0, "15un"

    invoke-static {p1, p0, v1}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string p0, "15ust"

    sget-wide v0, Lcom/loc/fh;->N:J

    invoke-static {p1, p0, v0, v1}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static h(Lorg/json/JSONObject;Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "17J"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "able"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/fh;->J:Z

    const-string v2, "ok9"

    invoke-static {p1, v2, v0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    const-string v0, "auth"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ht"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/fh;->M:Ljava/lang/String;

    const-string v3, "ok11"

    invoke-static {p1, v3, v2}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    const-string v0, "nr"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/fh;->L:Z

    const-string v0, "tm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/16 v0, 0x14

    if-ge p0, v0, :cond_1

    sput p0, Lcom/loc/fh;->K:I

    const-string v0, "ok10"

    invoke-static {p1, v0, p0}, Lcom/loc/fo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->A:Z

    return v0
.end method

.method public static i()I
    .locals 1

    sget v0, Lcom/loc/fh;->B:I

    return v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->D:Z

    return v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->E:Z

    return v0
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->c:Z

    return v0
.end method

.method public static m()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->F:Z

    return v0
.end method

.method public static n()J
    .locals 2

    sget-wide v0, Lcom/loc/fh;->G:J

    return-wide v0
.end method

.method public static o()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->L:Z

    return v0
.end method

.method public static p()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->J:Z

    return v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/fh;->M:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/w;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, Lcom/loc/fh;->H:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/loc/fh;->I:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static s()I
    .locals 1

    sget v0, Lcom/loc/fh;->I:I

    return v0
.end method

.method public static t()J
    .locals 2

    sget-wide v0, Lcom/loc/fh;->N:J

    return-wide v0
.end method
