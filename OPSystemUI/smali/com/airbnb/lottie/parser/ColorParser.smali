.class public Lcom/airbnb/lottie/parser/ColorParser;
.super Ljava/lang/Object;
.source "ColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/ColorParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/airbnb/lottie/parser/ColorParser;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/ColorParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/ColorParser;->INSTANCE:Lcom/airbnb/lottie/parser/ColorParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;
    .locals 13
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16
    .local v0, "isArray":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    .line 20
    .local v1, "r":D
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    .line 21
    .local v3, "g":D
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    .line 22
    .local v5, "b":D
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    .line 23
    .local v7, "a":D
    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 27
    :cond_2
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v1, v9

    if-gtz v11, :cond_3

    cmpg-double v11, v3, v9

    if-gtz v11, :cond_3

    cmpg-double v11, v5, v9

    if-gtz v11, :cond_3

    cmpg-double v9, v7, v9

    if-gtz v9, :cond_3

    .line 28
    const-wide v9, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v9

    .line 29
    mul-double/2addr v3, v9

    .line 30
    mul-double/2addr v5, v9

    .line 31
    mul-double/2addr v7, v9

    .line 34
    :cond_3
    double-to-int v9, v7

    double-to-int v10, v1

    double-to-int v11, v3

    double-to-int v12, v5

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/ColorParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
